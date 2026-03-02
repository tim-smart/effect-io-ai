Package: `effect`<br />
Module: `SchemaGetter`<br />

## SchemaGetter.toLowerCase

Converts a string to lowercase.

Behavior:
- Pure, delegates to `String.toLowerCase`.

**Example** (To lowercase)

```ts
import { SchemaGetter } from "effect"

const lower = SchemaGetter.toLowerCase<string>()
```

See also:
- `toUpperCase` — inverse operation

**Signature**

```ts
declare const toLowerCase: <E extends string>() => Getter<string, E>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaGetter.ts#L972)

Since v4.0.0