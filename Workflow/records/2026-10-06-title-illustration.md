# L03 title-screen illustration

- Date: 2026-10-06.
- Requested by: Ondřej Mottl, after approval and implementation of both polishing maps.
- Request: generate a title-slide picture combining pictures and images used through this lecture.
- Scope: one title illustration, integration into the existing first slide, an exported arrival-screen image and refreshed local presentation outputs. The biological question, formal subtitle, course logo, materials link, subsequent hook and 63-slide order are retained.
- Branch: `polish/l03-before-teaching`; no staging, commits, pushes or publication.

## Asset and provenance

Final cutout: `Presentation/Materials/kosatce_titulni_ilustrace.png`, generated with the built-in Image Generation tool using a genuinely transparent background. The [complete prompt](2026-10-06-title-illustration-prompt.txt) is stored alongside this record. The original generated file remains under the tool's default generated-images folder.

The inspected supporting inputs were:

- `Presentation/Materials/iris_model_ruler.png`: the lecture's botanist, iris flowers and ruler, used as the scene reference.
- `Presentation/Materials/iris_versicolor.jpg`: the lecture's flower photograph, used only for biological appearance; the original photo credit remains on the biological hook.
- `Presentation/Materials/ctverce_rezidui_static.png`: grey observations, purple fitted line and orange residual-square motifs, used as conceptual references.
- `L02/Presentation/Materials/tucnaci_titulni_ilustrace.png`: the established course-series painterly cutout treatment, used as a style reference only.

The new scene connects measuring the width and length of a korunní lístek with a schematic model sketch. It shows a botanist, wooden measuring guides, purple iris flowers and a parchment board with grey dots, a straight purple line and small orange departures/squares. The board is an illustrative motif, not a graph of the iris data or a quantitative result. Plant height is not the modelled variable. The illustration contains no readable numbers, equations, title, logo or data claims.

The existing canonical `.course-title-illustrated`, `.course-title-illustration` and `.course-title-caption` components place the cutout next to editable native Quarto text. No lesson-local CSS or generated theme edits are needed. Czech alt text and a visible AI disclosure are supplied. The [presentation story map](2026-10-06-presentation-polish-story-map.md) records the user's explicit title-artwork amendment.

## Validation

The generated image was visually inspected for coherent iris morphology, two-dimensional petal measurement, a straight schematic line, restrained semantic colours and a clean cutout. It is 1312 × 1199 RGBA, with alpha extrema 0 and 255, SHA-256 `787062885b9b692c4ee40aba3227a353d2c8bb29eebd8213f033704fb496d689`.

- Supported offline presentation rendering passed and regenerated `Presentation/presentation.html`, `Presentation/presentation.pdf` and `docs/index.html`; the PDF retains 63 pages and the two HTML files are byte-identical. No live PollsLive synchronization or deployment occurred. The temporary offline client was assembled from the exact pinned local Git blobs with matching dependency-lock contents, without a checkout or registry operation.
- The native title screen was exported as `Presentation/Materials/l03_title_screen.png` (1600 × 900), with navigation controls and counter hidden for the export. It retains editable text in the actual deck; the PNG is only an export. SHA-256: `3c56f4b7d01fb03c87b69334f6c7ac0a6a9217f3f31a6bd4f154d19238d94b21`.
- Browser checks passed at 1600 × 900, 1280 × 720 and 1050 × 700: illustration loaded, title/image do not overlap, all title components remain in the viewport, materials link and AI disclosure are present, and no JavaScript errors occurred. The native export and PDF title page were visually inspected at full size.
- UTF-8 and all 65 unique chunk labels passed; source whitespace checks and credential-free PollsLive definition/evidence validation passed. This follow-up introduced one image-display chunk and no new data/model computation, task or prerequisite.
- A separate read-only vision reviewer re-read the complete presentation and inspected the source, new cutout, provenance and map amendment. Its final review also independently inspected the 1600 × 900 export, both smaller browser-size screenshots and the PDF title page: **no findings**, ready for human review. The prior full-deck review remains valid.

Only L03 changed in this follow-up: source/title assets, workflow records and regenerated presentation outputs. Existing polishing changes were preserved, as were unrelated temporary files. The canonical shared title layout and L01/L02 reference artifacts were not edited.
