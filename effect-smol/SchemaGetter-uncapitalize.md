Package: `effect`<br />
Module: `SchemaGetter`<br />

## SchemaGetter.uncapitalize

Lowercases the first character of a string.

Behavior:
- Pure, delegates to `String.uncapitalize`.

**Example** (Uncapitalize string)

```ts
import { SchemaGetter } from "effect"

const uncap = SchemaGetter.uncapitalize<string>()
```

**Signature**

```ts
declare const uncapitalize: <E extends string>() => Getter<string, E>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaGetter.ts#L899)

Since v4.0.0