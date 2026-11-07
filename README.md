# Huellas Felices · Adopción de Animales

Node.js + Express · PostgreSQL (Supabase) · HTML/CSS/JS. I.T.S. Humane · Web Application Capstone.

## Puesta en marcha
1. `npm install`
2. Copia `.env.example` a `.env` y complétalo (ver `CONFIGURAR_NOTIFICACIONES.md`).
3. En el SQL Editor de Supabase ejecuta `schema.sql` (base nueva) o `migracion.sql` (si ya tenías las tablas) y luego `seed.sql` (mascotas de ejemplo).
4. `npm run crear-admin` crea la cuenta de administrador con `ADMIN_EMAIL` / `ADMIN_PASSWORD`.
5. `npm start` y abre http://localhost:3000

## Flujo
Inicio de sesión / registro → catálogo de mascotas → solicitud de adopción (aviso por correo).
El administrador entra al panel para publicar mascotas.
