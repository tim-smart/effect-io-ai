Package: `effect`<br />
Module: `SchemaGetter`<br />

## SchemaGetter.capitalize

Capitalizes the first character of a string.

Behavior:
- Pure, delegates to `String.capitalize`.

**Example** (Capitalize string)

```ts
import { SchemaGetter } from "effect"

const cap = SchemaGetter.capitalize<string>()
```

**Signature**

```ts
declare const capitalize: <E extends string>() => Getter<string, E>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaGetter.ts#L878)

Since v4.0.0