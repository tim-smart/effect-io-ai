Package: `effect`<br />
Module: `SchemaGetter`<br />

## SchemaGetter.toUpperCase

Converts a string to uppercase.

Behavior:
- Pure, delegates to `String.toUpperCase`.

**Example** (To uppercase)

```ts
import { SchemaGetter } from "effect"

const upper = SchemaGetter.toUpperCase<string>()
```

See also:
- `toLowerCase` — inverse operation

**Signature**

```ts
declare const toUpperCase: <E extends string>() => Getter<string, E>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaGetter.ts#L993)

Since v4.0.0