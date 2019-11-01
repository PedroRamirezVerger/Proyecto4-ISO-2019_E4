package com.tgs.tgh.stepDefinition;

import static org.junit.Assert.assertEquals;

import java.util.concurrent.TimeUnit;

import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;

import com.tgs.tgh.model.Paciente;
import com.tgs.tgh.model.Usuario;
import com.tgs.tgh.web.Manager;

import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;

public class DatosRegistroSteps {

	ChromeDriver driver;

	@Given("^Estoy en la pagina de registro$")
	public void estoy_en_la_pagina_de_registro() throws Throwable {
		driver = WebDriver.webDriver();
		driver.get("http://localhost:8080/registro");
		driver.manage().timeouts().implicitlyWait(30, TimeUnit.SECONDS);
		assertEquals("Registro", driver.getTitle());
	}

	@When("^No se introducen los datos de registro$")
	public void no_se_introducen_los_datos_de_registro() throws Throwable {
	}

	@When("^Se pulsa el boton enviar$")
	public void se_pulsa_el_boton_enviar() throws Throwable {
		driver.findElementById("registrarUsuario").click();
		driver.manage().timeouts().implicitlyWait(30, TimeUnit.SECONDS);
	}

	@Then("^Se muestra un label de error$")
	public void se_muestra_un_label_de_error() throws Throwable {
		assertEquals("El nombre es obligatorio.", driver.findElementById("labelNombreMal").getText());
		driver.quit();
	}

	@When("^Se introducen los datos de registro$")
	public void se_introducen_los_datos_de_registro() throws Throwable {
		WebElement elementDNI, elementNombre, elementApellidos, elementFecha, elementDomicilio, elementPoblacion,
				elementCP, elementTelefono, elementEmail, elementPwd, elementPwdRepe;

		elementDNI = driver.findElement(By.id("dni"));
		elementNombre = driver.findElement(By.id("nombre"));
		elementApellidos = driver.findElement(By.id("apellidos"));
		elementFecha = driver.findElement(By.id("fecha_ini"));
		elementDomicilio = driver.findElement(By.id("domicilio"));
		elementPoblacion = driver.findElement(By.id("poblacion"));
		elementCP = driver.findElement(By.id("cp"));
		elementTelefono = driver.findElement(By.id("telefono"));
		elementEmail = driver.findElement(By.id("email"));
		elementPwd = driver.findElement(By.id("contraseña"));
		elementPwdRepe = driver.findElement(By.id("RepetirContraseña"));

		elementDNI.sendKeys("00000000Z");
		elementNombre.sendKeys("Prueba");
		elementApellidos.sendKeys("Prueba");
		elementFecha.sendKeys("26/10/1998");
		elementDomicilio.sendKeys("Calle Prueba");
		elementPoblacion.sendKeys("Ciudad Real");
		elementCP.sendKeys("13003");
		elementTelefono.sendKeys("600000000");
		elementEmail.sendKeys("prueba@prueba.com");
		elementPwd.sendKeys("prueba");
		elementPwdRepe.sendKeys("prueba");
	}

	@Then("^No se muestran labels de error$")
	public void no_se_muestran_labels_de_error() throws Throwable {
		assertEquals("", driver.findElementById("labelNombreMal").getText());
		driver.quit();
		Usuario usuario = new Usuario("00000000Z", "prueba", "Prueba", "Prueba", "26/10/1998", "Calle Prueba",
				"Ciudad Real", "13003", "600000000", "prueba@prueba.com");
		Paciente paciente = new Paciente("00000000Z", "prueba", "Prueba", "Prueba", "26/10/1998", "Calle Prueba",
				"Ciudad Real", "13003", "600000000", "prueba@prueba.com", "Sin asignar");
		Manager.get().eliminarUsuario(usuario);
		Manager.get().eliminarPaciente(paciente);
	}

	@When("^Se introducen los datos de registro con contrasenas incorrectas$")
	public void se_introducen_los_datos_de_registro_con_contrasenas_incorrectas() throws Throwable {
		WebElement elementDNI, elementNombre, elementApellidos, elementFecha, elementDomicilio, elementPoblacion,
				elementCP, elementTelefono, elementEmail, elementPwd, elementPwdRepe;

		elementDNI = driver.findElement(By.id("dni"));
		elementNombre = driver.findElement(By.id("nombre"));
		elementApellidos = driver.findElement(By.id("apellidos"));
		elementFecha = driver.findElement(By.id("fecha_ini"));
		elementDomicilio = driver.findElement(By.id("domicilio"));
		elementPoblacion = driver.findElement(By.id("poblacion"));
		elementCP = driver.findElement(By.id("cp"));
		elementTelefono = driver.findElement(By.id("telefono"));
		elementEmail = driver.findElement(By.id("email"));
		elementPwd = driver.findElement(By.id("contraseña"));
		elementPwdRepe = driver.findElement(By.id("RepetirContraseña"));

		elementDNI.sendKeys("00000000Z");
		elementNombre.sendKeys("Prueba");
		elementApellidos.sendKeys("Prueba");
		elementFecha.sendKeys("26/10/1998");
		elementDomicilio.sendKeys("Calle Prueba");
		elementPoblacion.sendKeys("Ciudad Real");
		elementCP.sendKeys("13003");
		elementTelefono.sendKeys("600000000");
		elementEmail.sendKeys("prueba@prueba.com");
		elementPwd.sendKeys("prueba");
		elementPwdRepe.sendKeys("mal");
	}

	@Then("^Se muestra labels de error de contrasena$")
	public void se_muestra_labels_de_error_de_contrasena() throws Throwable {
		assertEquals("Las contraseñas no coinciden, inténtalo de nuevo.", driver.findElementById("labelRepetirContraseñaMal").getText());
		driver.quit();
	}
}
