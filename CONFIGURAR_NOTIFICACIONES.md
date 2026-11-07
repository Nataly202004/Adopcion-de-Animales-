# Notificación por correo de nuevas solicitudes

Cuando alguien envía una solicitud de adopción, la solicitud se guarda en la base de datos y se envía un correo a `ADMIN_EMAILS`.

1. Entra a tu cuenta de Google → Seguridad → activa la **verificación en 2 pasos**.
2. Abre https://myaccount.google.com/apppasswords y crea una contraseña de aplicación (16 letras).
3. En tu archivo `.env` (nunca en `.env.example`):
   - `SMTP_USER` = el Gmail que envía
   - `SMTP_PASS` = la contraseña de aplicación (no la clave normal de Gmail)
   - `ADMIN_EMAILS` = correo(s) que reciben los avisos, separados por coma
4. Reinicia el servidor. Si falta algo, la solicitud igual se guarda y la consola avisa.
