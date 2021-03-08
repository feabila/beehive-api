package br.com.fiap.watson_api.model.service;


import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.util.List;

import com.ibm.cloud.sdk.core.service.security.IamOptions;
import com.ibm.watson.speech_to_text.v1.SpeechToText;
import com.ibm.watson.speech_to_text.v1.model.RecognizeOptions;
import com.ibm.watson.speech_to_text.v1.model.SpeechRecognitionResult;
import com.ibm.watson.speech_to_text.v1.model.SpeechRecognitionResults;

public class TesteCustomizacao {
	 static List<SpeechRecognitionResult> resp;
	 static String getTextresponse;

	


	public static void main(String[] args) {

		
	}
	
	
	
	public static void Custom(File temp) {
		// definindo a instância do Watson STT 
				IamOptions options = new IamOptions.Builder()
						.apiKey("bL140DnTUZAM6xuym0ERZrzOnW9zC3BNMMLMXT0hixij") // instância dos alunos da FIAP
						.build();

				SpeechToText speechToText = new SpeechToText(options);
				speechToText.setEndPoint("https://stream.watsonplatform.net/speech-to-text/api");

				try {
					// definindo os atributos da chamada para reconhecimento de fala
					RecognizeOptions recognizeOptions = new RecognizeOptions.Builder()
							.audio(new FileInputStream(temp))
							.contentType("audio/wav")  // tipo do arquivo de áudio
							.model("pt-BR_BroadbandModel")   // modelo base do reconhecedor
							.acousticCustomizationId("5be7a6a4-6bc8-4331-9c39-2d81423957cc")   // customização acústica
							.customizationId("91f977d7-d099-4310-b12a-8cb9193f71a2")    // customização de linguagem
							.build();

					// efetuando a chamada para reconhecimento de fala
					SpeechRecognitionResults speechRecognitionResults =
							speechToText.recognize(recognizeOptions).execute().getResult();  // chamada da função de reconhecimento
					resp = speechRecognitionResults.getResults();
					getTextresponse= speechRecognitionResults.getResults().get(0).getAlternatives().get(0).getTranscript();
					System.out.println(speechRecognitionResults.getResults().get(0).getAlternatives().get(0).getTranscript()); 
//					if(speechRecognitionResults!=null) {
//						 teste = speechRecognitionResults.getResults().toArray();
//						System.out.println(speechRecognitionResults.results[0].alternatives[0].transcript);// imprimindo o resultado do reconhecimento
//					}
				} catch (FileNotFoundException e) {
					e.printStackTrace();
				}
	

	}
	
}


