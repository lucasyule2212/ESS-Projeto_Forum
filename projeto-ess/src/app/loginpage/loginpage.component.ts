import { Component, OnInit } from '@angular/core';
import { AutenticacaoService } from '../serveces/autenticacao.service';
import { usuario } from '../usuario';

@Component({
  selector: 'app-loginpage',
  templateUrl: './loginpage.component.html',
  styleUrls: ['./loginpage.component.css']
})
export class LoginpageComponent implements OnInit {

  public Usuario: usuario = new usuario();
  

  constructor(private autenticacaoService: AutenticacaoService) { }

  ngOnInit(): void {
  }

  login(){
    this.autenticacaoService.login(this.Usuario);
    alert("Login bem sucedido")
  }
}
