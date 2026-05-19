Package: `effect`<br />
Module: `Path`<br />

## Path.Path

Service interface for platform-specific path manipulation.

The service exposes operations for joining, normalizing, parsing,
formatting, and converting file system paths. URL conversion methods return
`Effect`s because invalid file URLs or paths can fail with `BadArgument`.

**Example** (Using path operations)

```ts
import { Effect, Path } from "effect"

const program = Effect.gen(function*() {
  const path = yield* Path.Path

  // Use various path operations
  const joined = path.join("home", "user", "documents")
  const normalized = path.normalize("./path/../to/file.txt")
  const basename = path.basename("/path/to/file.txt")
  const dirname = path.dirname("/path/to/file.txt")
  const extname = path.extname("file.txt")
  const isAbs = path.isAbsolute("/absolute/path")
  const parsed = path.parse("/path/to/file.txt")
  const relative = path.relative("/from/path", "/to/path")
  const resolved = path.resolve("relative", "path")

  console.log({
    joined,
    normalized,
    basename,
    dirname,
    extname,
    isAbs,
    parsed,
    relative,
    resolved
  })
})
```

**Signature**

```ts
export interface Path {
  readonly [TypeId]: typeof TypeId
  readonly sep: string
  readonly basename: (path: string, suffix?: string) => string
  readonly dirname: (path: string) => string
  readonly extname: (path: string) => string
  readonly format: (pathObject: Partial<Path.Parsed>) => string
  readonly fromFileUrl: (url: URL) => Effect.Effect<string, BadArgument>
  readonly isAbsolute: (path: string) => boolean
  readonly join: (...paths: ReadonlyArray<string>) => string
  readonly normalize: (path: string) => string
  readonly parse: (path: string) => Path.Parsed
  readonly relative: (from: string, to: string) => string
  readonly resolve: (...pathSegments: ReadonlyArray<string>) => string
  readonly toFileUrl: (path: string) => Effect.Effect<URL, BadArgument>
  readonly toNamespacedPath: (path: string) => string
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Path.ts#L91)

Since v4.0.0