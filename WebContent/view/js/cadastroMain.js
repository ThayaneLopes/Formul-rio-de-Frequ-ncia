$("#form_cadastro").validate({
       rules : {
             nome:{
                    required:true,
                    minlength:3
             },
             telefone:{
                 required:true,
                 minlength:14
          },
             email:{
                    required:true
             },
             rg:{
                    required:true ,
                    minlength:5
             } ,
             cpf:{
            	 required:true,
            	 minlength:14,
            	 maxlength:14
             },
             banco:{
            	 required:true,
             },
             agencia:{
            	 required:true,
            	 minlength:7,
            	 maxlength:8
             },
             conta:{
            	 required:true,
            	 minlength:8,
            	 maxlength:8
             },
             matricula:{
            	 required:true,
            	 minlength:13,
            	 maxlength:13
             },
             curriculo:{
            	 required:true,
             },
             login:{
            	 required:true,
             },
             senha:{
            	 required:true,
            	 minlength:8,
            	 maxlength:15
             },
             tituloPlano:{
            	 required:true,
             },
             tipoProjeto:{
            	 required:true,
             }
       },
       messages:{
             nome:{
                    required:"Por favor, informe seu nome",
                    minlength:"O nome deve ter pelo menos 3 caracteres"
             },
             telefone:{
                 required:"Por favor, informe seu telefone",
                 minlength:"O nome deve ter pelo menos 14 caracteres"
          },
             email:{
                    required:"É necessário informar um email"
             },
             rg:{
                    required:"O rg não pode ficar em branco"
             } ,
             cpf:{
            	 required:"O CPF não pode ficar em branco",
            	minlength:"O CPF deve ter pelo menos 14 caracteres",
            	maxlength:"O CPF deve ter no máximo 14 caracteres"
             },
             banco:{
            	 required:"O nome do banco deve ser preenchido",
             },
             agencia:{
            	 required:"A agência deve ser preenchida",
            	 minlength:"Agência deve ter 8 caracteres",
            	 maxlength:"Agência deve ter 8 caracteres"
             },
             conta:{
            	 required:"A conta deve ser preenchida",
            	 minlength:"Conta deve ter 8 caracteres",
            	 maxlength:"Conta deve ter 8 caracteres"
             },            
             matricula:{
            	 required:"A matrícula deve ser preenchida",
            	 minlength:"Matrícula deve ter 8 caracteres",
            	 maxlength:"Matrícula deve ter 8 caracteres"
             },
             curriculo:{
            	 required:"O currículo deve ser preenchido",
             },
             login:{
            	 required:"O login deve ser preenchido",
             },
             senha:{
            	 required:"A senha deve ser preenchida",
            	 minlength:"Senha deve ter no mínimo 8 caracteres",
            	 maxlength:"Senha deve ter no máximo 15 caracteres"
             },
             tituloPlano:{
            	 required:"O Título do Plano deve ser preenchido",
             },
             tipoProjeto:{
            	 required:"O Tipo de Projeto deve ser preenchido",
             }
       }
});


