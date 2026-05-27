import Foundation

let ArtistChatMock: [Conversa] = [
    Conversa(
        nome: "Bar Central",
        tipo: "Casa de show • São Paulo",
        ultimaMensagem: "Fechado! Vou gerar o contrato pelo Giggo.",
        horario: "14:20",
        icone: "music.note.house.fill",
        mensagens: [
            Mensagem(
                texto: "Olá! Vi o perfil da banda e gostei bastante do repertório.",
                sendByUser: false,
                horario: "14:05"
            ),
            Mensagem(
                texto: "Obrigado! Tocamos rock nacional, pop rock e alguns clássicos.",
                sendByUser: true,
                horario: "14:07"
            ),
            Mensagem(
                texto: "Vocês têm disponibilidade para sexta-feira às 21h?",
                sendByUser: false,
                horario: "14:10"
            ),
            Mensagem(
                texto: "Temos sim. Qual seria a duração do show?",
                sendByUser: true,
                horario: "14:12"
            ),
            Mensagem(
                texto: "Duas horas de apresentação, das 21h às 23h.",
                sendByUser: false,
                horario: "14:15"
            ),
            Mensagem(
                texto: "Perfeito. Podemos fechar nesse formato.",
                sendByUser: true,
                horario: "14:18"
            ),
            Mensagem(
                texto: "Fechado! Vou gerar o contrato pelo Giggo.",
                sendByUser: false,
                horario: "14:20"
            )
        ]
    ),
    
    Conversa(
        nome: "Studio Pub",
        tipo: "Bar de rock • Santo André",
        ultimaMensagem: "Vou enviar a proposta com cachê e horário.",
        horario: "12:48",
        icone: "guitars.fill",
        mensagens: [
            Mensagem(
                texto: "Boa tarde! Vocês fazem show autoral também?",
                sendByUser: false,
                horario: "12:30"
            ),
            Mensagem(
                texto: "Fazemos sim. Temos um set misto com autorais e covers.",
                sendByUser: true,
                horario: "12:34"
            ),
            Mensagem(
                texto: "Perfeito. Estamos procurando uma banda para sábado.",
                sendByUser: false,
                horario: "12:38"
            ),
            Mensagem(
                texto: "Legal! O show seria em qual horário?",
                sendByUser: true,
                horario: "12:41"
            ),
            Mensagem(
                texto: "Das 22h até meia-noite. O público costuma gostar de rock e metal.",
                sendByUser: false,
                horario: "12:44"
            ),
            Mensagem(
                texto: "Esse formato combina com a banda.",
                sendByUser: true,
                horario: "12:46"
            ),
            Mensagem(
                texto: "Vou enviar a proposta com cachê e horário.",
                sendByUser: false,
                horario: "12:48"
            )
        ]
    )
]
