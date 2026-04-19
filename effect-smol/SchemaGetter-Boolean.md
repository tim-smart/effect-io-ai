Package: `effect`<br />
Module: `SchemaGetter`<br />

## SchemaGetter.Boolean

Coerces any value to a `boolean` using the global `Boolean()` constructor.

Use this when:
- You need boolean coercion (truthiness check) of an encoded value.

Behavior:
- Pure, never fails.
- Delegates to `globalThis.Boolean`.

**Example** (Coerce to boolean)

```ts
import { SchemaGetter } from "effect"

const toBool = SchemaGetter.Boolean<string>()
// Getter<boolean, string>
```

**Signature**

```ts
declare const Boolean: <E>() => Getter<boolean, E>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaGetter.ts#L779)

Since v4.0.0