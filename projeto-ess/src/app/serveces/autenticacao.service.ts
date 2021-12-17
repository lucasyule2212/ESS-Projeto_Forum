import { Injectable } from '@angular/core';
import { usuario } from '../usuario';
import { HttpClient } from '@angular/common/http';
import { Router } from '@angular/router';

@Injectable({
  providedIn: 'root'
})
export class AutenticacaoService {

  constructor( private router: Router) {

  }

  login(usuario: usuario){
    this.router.navigate(['/home'])
  }
  cadastro() {
     this.router.navigate(['/home'])
  }
}
