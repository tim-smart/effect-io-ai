Package: `effect`<br />
Module: `Array`<br />

## Array.ReadonlyArray.With

Constructs an array type preserving non-emptiness.

**Example**

```ts
import type { Array } from "effect"

type Result = Array.ReadonlyArray.With<readonly [number], string>
// Result is NonEmptyArray<string>
```

**Signature**

```ts
type With<S, A> = S extends NonEmptyReadonlyArray<any> ? NonEmptyArray<A>
    : Array<A>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Array.ts#L2977)

Since v2.0.0