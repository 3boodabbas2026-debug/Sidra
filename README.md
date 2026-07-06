# 🤍 Sidra

A moonlit-forest interactive gift. One white lily breathing in a forest
clearing — tap it and the camera floats above it, messages orbit around,
and each message can be popped into a bubble and thrown around the screen.

## Deploy on Render (free)

1. Go to [render.com](https://render.com) and sign in with GitHub.
2. **New → Static Site** → pick this repo (`Sidra`).
3. Leave **Build Command** empty, set **Publish Directory** to `.`
   (the included `render.yaml` fills this automatically if you use Blueprints).
4. Deploy → you get a link like `https://sidra.onrender.com` — send it to her.

GitHub Pages also works: repo **Settings → Pages → Deploy from branch → main / root**.

## Add the music

Put your mp3 in this folder (e.g. `music.mp3`) and edit this line in
`index.html` (search for `MUSIC`):

```html
<source src="YOUR_MUSIC_FILE.mp3" type="audio/mpeg">
```

It starts playing on her first tap (phones block autoplay before a tap).
Volume is the `MUSIC_VOLUME` constant near the top of the script.

## Add / remove memories

Photos and short videos live in `memories/`. The list shown in the gallery
is the `MEMORIES` array at the top of the script in `index.html` — add or
remove lines there. Keep videos small (a few MB); GitHub rejects files
over 100 MB, which is why the originals in `images and videos (1)/` are
git-ignored.
