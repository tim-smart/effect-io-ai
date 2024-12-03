# sync

Creates a `Micro` effect that succeeds with a lazily evaluated value.

If the evaluation of the value throws an error, the effect will fail with a
`Die` variant of the `MicroCause` type.

To import and use `sync` from the "Micro" module:

```ts
import * as Micro from "effect/Micro"
// Can be accessed like this
Micro.sync
```

**Signature**

```ts
export declare const sync: <A>(evaluate: LazyArg<A>) => Micro<A>
```
