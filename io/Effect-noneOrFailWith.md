# noneOrFailWith

Lifts an `Option` into a `Effect`. If the option is empty it succeeds with
`undefined`. If the option is defined it fails with an error computed by
the specified function.

To import and use `noneOrFailWith` from the "Effect" module:

```ts
import * as Effect from '@effect/io/Effect'

// Can be accessed like this
Effect.noneOrFailWith
```

**Signature**

```ts
export declare const noneOrFailWith: <E, A>(option: Option.Option<A>, f: (a: A) => E) => Effect<never, E, void>
```
