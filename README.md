# voto-docker
 Crear pipeline CI/CD completo para el proyecto vote

 GitHub Actions workflows
* Self-hosted runners
* Build y push de imágenes Docker
* Deployment automático con Docker Compose 
* Health checks y monitoreo básico

La aplicación de votación incluye:

🐍 vote: App Flask para votar (gato vs perro)
🧠 worker: Servicio Node.js que procesa votos
📊 result: App Node.js que muestra resultados
🗃️ redis: Almacén temporal de votos
🐘 postgres: Base de datos persistente

✅ Tareas del Proyecto Final
Tarea Principal (Obligatoria)
Tomar tu proyecto roxs-voting-app
Crear los workflows de CI/CD completos
Configurar self-hosted runner para deployment
Probar el pipeline completo desde commit hasta producción

Tareas Adicionales
Crear scripts de utilidad para deployment local
Implementar sistema de backup para PostgreSQL
Configurar alertas por email o Slack
Crear documentación completa del proyecto
