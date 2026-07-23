# Song Storyteller

![Song Storyteller — Escucha de nuevo la canción que creías conocer](assets/song-storyteller-cover.png)

**Escucha de nuevo la canción que creías conocer.**

Song Storyteller es un Agent Skill de código abierto que primero explica de qué trata realmente una canción y después cuenta la historia verificada que cambia la siguiente escucha.

Está diseñado para canciones en cualquier idioma y escribe en la lengua del lector. Puedes darle un título y un artista, un enlace, un remix, una versión, una canción tradicional o una obra instrumental. En idiomas poco documentados, la calidad depende del modelo y de las fuentes fiables disponibles; el agente declara esos límites en vez de adivinar.

> `Usa $song-storyteller: Stromae — Papaoutai`

[English](README.md) · [Français](README.fr.md) · [Español](README.es.md) · [Русский](README.ru.md)

## Idiomas de lanzamiento

Inglés, francés, español y ruso son los cuatro idiomas principales de la primera versión para documentación y demostraciones. La habilidad sigue siendo independiente del idioma.

## Qué lo hace diferente

- **Primero, el significado.** El primer párrafo explica quién habla, a quién y qué está ocurriendo.
- **Investigación dentro de la cultura original.** El agente busca en el idioma de la canción, el del lector y una lengua puente cuando resulta útil.
- **Pruebas antes que espectáculo.** Entrevistas, archivos, créditos y periodismo musical fiable pesan más que las leyendas repetidas en internet.
- **Traducción más allá de las palabras.** Modismos, dialectos, juegos de palabras, registro y referencias culturales se explican con paráfrasis breves.
- **Una voz editorial humana.** La habilidad elimina burocracia, suspense artificial, conclusiones repetidas y datos que no cambian la escucha.
- **Respeto por los derechos de autor.** Analiza frases cortas cuando es necesario, pero no reproduce ni traduce letras completas.

## Instalación

```bash
npx skills add kosbushe/song-storyteller -g --skill song-storyteller -y
```

Instalación interactiva con elección de agente:

```bash
npx skills add kosbushe/song-storyteller
```

## Uso

```text
Usa $song-storyteller: Madonna — Secret
```

```text
Usa $song-storyteller para contar la historia de Кино — Пачка сигарет en francés.
```

Puedes pedir una pieza breve o extensa, elegir el idioma de salida y dar prioridad a la letra, la producción, la historia o una leyenda discutida.

## Historias de demostración

- [Madonna — *Secret*, contada en ruso](examples/ru/madonna-secret.md)
- [Кино — *Пачка сигарет*, contada en francés](examples/fr/kino-pachka-sigaret.md)
- [Stromae — *Papaoutai*, contada en español](examples/es/stromae-papaoutai.md)

## Promesa editorial

Cada historia debe aclarar el significado en los dos primeros párrafos, distinguir el testimonio del autor del análisis y la recepción cultural, citar los hechos esenciales y terminar con dos detalles concretos para la próxima escucha. Si faltan fuentes, el agente lo dice. Nunca inventa una revelación.

## Licencia

[MIT](LICENSE). Song Storyteller es un proyecto independiente de código abierto, sin afiliación con artistas, sellos, servicios de streaming ni publicaciones musicales.
