package logicaNegocio;
		
import java.lang.Math;

/**
* Clase	Fraccionario 
* 				        
* <strong>Numero Fraccionario N/D </strong> 	         
*
* Donde N,D son numeros enteros,y D debe ser diferente de 0	
*
*
*/

	
public class Fraccionario
{

	/**
	 *
	 * Numerador del fraccionario 
	 */
		private	int numerador; 
		
	/**
	 * Denominador del fraccionario 
	 */
    private int denominador;
		

	/* Constructoras */
	
	/**
     * Constructor de un nuevo Fraccionario recibe
     * 2 valores enteros
     *
     * @param numerador   numerador   del  Fraccionario 
     * @param denominador denominador del  Fraccionario
     */	

	public Fraccionario(int	numerador, int denominador){
		this.numerador   = numerador;
		this.denominador = denominador;
	}
	
	/**
     * Constructor por defecto
     * numerador 0 denominador 1
     */	
		public Fraccionario( )
			{ this(0,1);}
		
		
	/* Modificadoras */
	
	/**
	 * Modifica el numerador del Fraccionario
	 * @param nuevo numerador
	 * @return void
	 */
		
	public void setNumerador (int num){
		this.numerador = num;
	}
	
	/**
	 * Modifica el denominador del Fraccionario
	 * @param nuevo denominador
	 * @return void
	 */
	
		
	public void setDenominador (int den){
		this.denominador = den;
	}
		
	
	
	
	/* Analizadoras */
	
	/**
	 * Retorna el numerador del Fraccionario
	 *
	 * @return  el numerador del Fraccionario
	 */
	
	public int getNumerador(){
		return this.numerador;
	}
	
	/**
	 * Retorna el denominador del Fraccionario
	 *
	 * @return el denominador del Fraccionario
	 */
		
	public int getDenominador(){
		return this.denominador;
	}
		

	/* Otras Operaciones */
	
	
	/**
	 * Invierte un Fracionario
	 * Ejemplo 3/4 lo invierte a 4/3
	 */
	
	
	public void	invertir() {
		int	tmp;
			
		tmp        = denominador;
		denominador= numerador;
		numerador  = tmp;
	}
	
	/**
	 * Retorna el valor decimal del Fraccionario
	 *
	 * @return el valor decimal del Fraccionario
	 */

    public double decimal(){
		return (double)	(numerador)/(double)(denominador);
	}
	
	/**
	 * Retorna el resultado de comparar dos Fraccionarios
	 * true si son iguales , false en caso contrario
	 *
	 * @param fracc Fraccionario con el que se compara
	 *
	 * @return el resultado de comparar
	 */
	
	public boolean esIgual(Fraccionario frac){
	    	if(this.decimal() == frac.decimal())
	    		return true;
	    	else
	    		return false;
	}


    /**
	 * Retorna el resultado de comparar dos Fraccionarios
	 * true si es menor , false en caso contrario
	 *
	 * @param fracc Fraccionario con el que se compara
	 *
	 * @return el resultado de comparar
	 */
	
	public boolean esMenor(Fraccionario frac)
	{
	    	if(this.decimal() < frac.decimal())
	    		return true;
	    	else
	    		return false;
	}

    
    /**
	 * Retorna el resultado de comparar dos Fraccionarios
	 * true si es mayor, false en caso contrario
	 *
	 * @param fracc Fraccionario con el que se compara
	 *
	 * @return el resultado de comparar
	 */
	
	public boolean esMayor(Fraccionario frac){
	   if(this.decimal() >= frac.decimal())
	    	return true;
	   else
	    	return false;
	}

    
    
    /**
     * Retorna el mayor de dos Fraccionarios
     *
     * @param fracc Fraccionario con el que se compara
     *
     * @return el mayor de dos Fraccionarios
     */   
	    
    public Fraccionario elMayor(Fraccionario frac) {
     if(this.decimal() > frac.decimal())
	    return this;
	 else
	    return frac;
	}
        	
     /**
     * Retorna el menor de dos Fraccionarios
     *
     * @param fracc Fraccionario con el que se compara
     *
     * @return el menor de dos Fraccionarios
     */ 

     public Fraccionario elMenor(Fraccionario frac){
      if(this.decimal() < frac.decimal())
	     return this;
	  else
	     return frac;
	 }	

	
	/**
	 * Visualiza por pantalla un fraccionario
	 */
     
	public void	visualizar(){
		System.out.println(numerador+"/"+denominador);
	}	
	
	/**
	 * Convierte un Fraccionario a String
	 * se reescribe el metodo toString
	 *
	 * @return resp Fraccionario como string
	 */
	 
	 public String toString() {
	 	String resp = numerador + " / " + denominador;
	 	return resp;
	 }
	
	/**
	 * Suma este Fracionario con otro
	 *
	 * @param Recibe el fraccionario con que se suma
	 *
	 * @return Fraccionario resultado de la suma
	 */	
	
	public Fraccionario	suma(Fraccionario frac){
		Fraccionario resp; 
                int	numres,	denres; 
			
		numres = ((numerador * frac.getDenominador()) + (denominador * frac.getNumerador()));
		denres = denominador * frac.getDenominador();
			
			
	    resp = new Fraccionario(numres, denres);
		resp.simplificar();
		return	resp;
	}
	
	/**
	 * Resta este Fracionario con otro
	 *
	 * @param Recibe el fraccionario con que se resta
	 *
	 * @return Fraccionario resultado de la resta
	 */	
	
	public Fraccionario resta(Fraccionario frac){
		int	numres,	denres;
		Fraccionario resp ;
			
		numres = ((numerador * frac.getDenominador()) - (denominador * frac.getNumerador()));
		denres = denominador * frac.getDenominador();
			
        resp = new Fraccionario(numres, denres);
		resp.simplificar();
		return resp;
	}
	
	/**
	 * Multiplica este Fracionario con otro
	 *
	 * @param Recibe el fraccionario con que se multiplica
	 *
	 * @return Fraccionario resultado de la multiplicacion
	 */	
	
	
	public Fraccionario	multiplicacion(Fraccionario frac){
		int	numres,	denres;
		Fraccionario resp;
			
		numres = numerador * frac.getNumerador();
		denres = denominador * frac.getDenominador();
									
		resp = new Fraccionario(numres, denres);
		resp.simplificar();
		return resp;
	}
	
	/**
	 * Divide este Fracionario con otro
	 *
	 * @param Recibe el fraccionario por el que se divide
	 *
	 * @return Fraccionario resultado de la division
	 */	
	
		
	public Fraccionario division(Fraccionario frac){	
		Fraccionario resp;
	
		frac.invertir();					
		resp = this.multiplicacion(frac);
					  			  
		resp.simplificar();			
		return resp;									
	}	
		
		
	/**
	 * Simplifica el Fraccionario
	 *
	 */	
		
	public void simplificar( ){				
	   int mcd = 1;		
	   mcd = this.MaxComunDivisor(numerador, denominador );
	   numerador   /= mcd;
	   denominador /= mcd;			
	}	

    
    /**
     * Maximo Comun Divisor
     *
     * Retorna el maximo comun divisor de dos numeros
     *
     * @param num1 primer numero
     * @param num2 segundo numero
     *
     * @return el maximo comun divisor de dos numeros
     */

	private  int MaxComunDivisor(int num1, int num2){
		int mcd = 0, may, men;
		
		if (Math.abs(num1) > Math.abs(num2)){
			may = Math.abs(num1);
			men = Math.abs(num2);
		} else {               
			may = Math.abs(num2);
			men = Math.abs(num1);
		}
		
		mcd = may % men;
		
		if (mcd == 0)
			return men;
		else
		    return MaxComunDivisor(men, may % men );
 }	
 
 	
}  
 

	
		