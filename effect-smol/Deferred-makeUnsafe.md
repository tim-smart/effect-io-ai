Package: `effect`<br />
Module: `Deferred`<br />

## Deferred.makeUnsafe

Unsafely creates a new `Deferred`

**Example**

```ts
import { Deferred } from "effect"

const deferred = Deferred.makeUnsafe<number>()
console.log(deferred)
```

**Signature**

```ts
declare const makeUnsafe: <A, E = never>() => Deferred<A, E>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Deferred.ts#L172)

Since v2.0.0