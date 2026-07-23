# Song Storyteller

**Hear the song you thought you knew.**

Song Storyteller is an open-source Agent Skill that explains what a song is really about, then tells the verified story that makes you hear it differently.

It is designed for songs in any language and writes in the reader's language. Give it a title and artist, a streaming link, a remix, a cover, a traditional song, or even an instrumental work. Coverage of rare languages depends on the underlying model and the availability of trustworthy sources; the skill reports those limits instead of guessing.

> `Use $song-storyteller: Madonna — Secret`

The result is a compact music-magazine feature with a meaning-first opening, cultural and linguistic context, one genuinely surprising turn, and inline links to reliable sources.

[Русская версия](README.ru.md)

## What makes it different

- **Meaning first.** If the listener may not understand the song's language, the first paragraph answers who is speaking, to whom, and what is happening.
- **Research across cultures.** The agent searches in the song's original language, the reader's language, and useful bridge languages instead of relying on English-only summaries.
- **Evidence before drama.** Interviews, official archives, liner notes, and reputable music journalism outrank repeated internet legends.
- **Translation beyond words.** Idioms, dialect, wordplay, register, code-switching, and cultural references are explained through concise paraphrase.
- **A human editorial voice.** The skill removes bureaucratic phrasing, AI-style fake suspense, repeated conclusions, and trivia that does not change the listening experience.
- **Copyright-aware.** It analyzes short phrases when necessary but never reproduces or translates full lyrics.

## Install

Install globally with the open-source Skills CLI:

```bash
npx skills add kosbushe/song-storyteller -g --skill song-storyteller -y
```

Or inspect the repository before choosing an agent and install scope:

```bash
npx skills add kosbushe/song-storyteller
```

The repository follows the Agent Skills folder format and can be used by compatible coding agents.

## Use

Invoke it explicitly:

```text
Use $song-storyteller: Stromae — Papaoutai
```

```text
Use $song-storyteller to tell me the story of Кино — Пачка сигарет in Spanish.
```

```text
Use $song-storyteller: Edith Piaf — Non, je ne regrette rien. Explain it in Japanese.
```

```text
Use $song-storyteller to compare the original song and this remix: <link>
```

You can ask for a shorter post, a deeper feature, a specific output language, or extra attention to lyrics, production, history, or disputed legends.

## Editorial promise

Every story should:

1. Make the song's meaning clear within the first two paragraphs.
2. Separate the creator's explanation from textual analysis and later cultural interpretation.
3. Cite the claims on which the story depends.
4. Include only details that change how the reader understands the words, sound, or cultural life of the song.
5. End with two concrete things to notice on the next listen.

No source is strong enough? The agent says so. No spectacular secret exists? It does not invent one.

## Repository layout

```text
skills/song-storyteller/
├── SKILL.md
├── agents/openai.yaml
└── references/
    ├── editorial-standard.md
    ├── literary-voice.md
    └── multilingual-research.md
```

## Contributing

Issues and pull requests are welcome, especially for:

- trusted music archives and primary-source collections outside the English-speaking world;
- language-specific pitfalls, idioms, dialects, and transliteration systems;
- examples where the skill confuses author testimony, analysis, and legend;
- edits that make the prose more precise without making it generic.

Please do not submit copyrighted lyric collections, scraped databases, or instructions for bypassing AI-detection systems.

## License

[MIT](LICENSE). Song Storyteller is an independent open-source project and is not affiliated with any artist, record label, streaming service, or music publication.
