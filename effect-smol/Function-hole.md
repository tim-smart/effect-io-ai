Package: `effect`<br />
Module: `Function`<br />

## Function.hole

Type hole simulation. Creates a placeholder for any type, primarily used during development.

**Example**

```ts
import { hole } from "effect/Function"

// Use during development as a placeholder
const placeholder: string = hole<string>()
```

**Signature**

```ts
declare const hole: <T>() => T
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Function.ts#L1207)

Since v2.0.0