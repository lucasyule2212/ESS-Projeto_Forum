import { Component, OnInit } from '@angular/core';
import { FormGroup, FormBuilder, Validators } from '@angular/forms';
 import { AutenticacaoService } from '../serveces/autenticacao.service';


@Component({
  selector: 'app-cadastro',
  templateUrl: './cadastro.component.html',
  styleUrls: ['./cadastro.component.css']
})
export class CadastroComponent implements OnInit {
  //cadastroForm: FormGroup

  constructor(private fb: FormBuilder,private authService:AutenticacaoService) {
   /* this.cadastroForm = fb.group({
      nome: ['', [Validators.name, Validators.required]],
      email: ['', [Validators.email, Validators.required]],
      senha: ['', [Validators.required, Validators.minLength(6)]],
    })*/
  }

  ngOnInit(): void {
  }
  submit() {
    this.authService.cadastro();
    /*let dataCadastro = this.cadastroForm.getRawValue();

    if (this.cadastroForm.valid) {
      this.authService.cadastro(dataCadastro).subscribe(
        //  todo PARTE DE AUTENTICAÇÃO
        dataServer => {
          //console.log(dataServer);
        }
      )
    }*/
  }
}
