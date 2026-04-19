Package: `effect`<br />
Module: `SchemaGetter`<br />

## SchemaGetter.encodeUriComponent

Encodes a string using `encodeURIComponent`.

Behavior:
- Pure, never fails.

**Example** (Encode a URI component)

```ts
import { SchemaGetter } from "effect"

const encode = SchemaGetter.encodeUriComponent<string>()
```

See also:
- `decodeUriComponent` - inverse operation

**Signature**

```ts
declare const encodeUriComponent: <E extends string>() => Getter<string, E>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaGetter.ts#L1476)

Since v4.0.0