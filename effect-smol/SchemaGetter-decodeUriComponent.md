Package: `effect`<br />
Module: `SchemaGetter`<br />

## SchemaGetter.decodeUriComponent

Decodes a URI component encoded string using `decodeURIComponent`.

Behavior:
- Fails with `Issue.InvalidValue` if the input contains malformed percent-encoding sequences.

**Example** (Decode a URI component)

```ts
import { SchemaGetter } from "effect"

const decode = SchemaGetter.decodeUriComponent<string>()
// Getter<string, string>
```

See also:
- `encodeUriComponent` - inverse operation

**Signature**

```ts
declare const decodeUriComponent: <E extends string>() => Getter<string, E>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaGetter.ts#L1501)

Since v4.0.0