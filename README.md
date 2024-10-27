# DynV6 DNS Auto Update Script

Este script se utiliza para actualizar automáticamente la dirección IPv4 y 6 en el servicio DynV6. Funciona en entornos Unix y se basa en `curl` o `wget` para enviar solicitudes HTTP, lo uso para mi Raspberry Pi 5.

## Requisitos

- **Sistema operativo**: Linux.
- **Dependencias**:
  - `curl` o `wget` debe estar instalado en el sistema.

## Configuración

1. **Clona** el script `dynv6.sh`.

2. **Configura el script**:
   - Abre el script `dynv6.sh` en un editor de texto.
   - Modifica las siguientes variables:
     - **hostname**: Cambia `NAME.dynv6.net` por tu nombre de dominio DynV6.
     - **token**: Reemplaza `TOKEN KEY` con tu token de autenticación de DynV6:
       ```
       hostname="nombredeldominio.dynv6.net"
       token="SuperKeyGuapisimaPrivada"
       ```

3. **Guarda los cambios** en el archivo y arráncalo dándole el permiso.


**Salida**

Si la dirección IPv6 no ha cambiado, el script mostrará:
```
No change in IPv6 address, no update needed
```

Si la dirección se actualiza con éxito, verás:
```
Addresses updated successfully
```

Nota:
Puedes programar el script para que se ejecute automáticamente a intervalos regulares usando cron o similar, para eso fue creado.
