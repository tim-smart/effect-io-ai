Package: `effect`<br />
Module: `Primitive`<br />

## Primitive.PathType

Specifies the type of path validation to perform.

**Example** (Choosing path validation)

```ts
import { Primitive } from "effect/unstable/cli"

// Only accept files
const filePath = Primitive.path("file", true)

// Only accept directories
const dirPath = Primitive.path("directory", true)

// Accept either files or directories
const anyPath = Primitive.path("either", false)
```

**Signature**

```ts
type PathType = "file" | "directory" | "either"
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Primitive.ts#L333)

Since v4.0.0