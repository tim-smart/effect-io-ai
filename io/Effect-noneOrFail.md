# noneOrFail

Lifts an `Option` into a `Effect`. If the option is empty it succeeds with
`void`. If the option is defined it fails with the content.

To import and use `noneOrFail` from the "Effect" module:

```ts
import * as Effect from '@effect/io/Effect'

// Can be accessed like this
Effect.noneOrFail
```

**Signature**

```ts
export declare const noneOrFail: <E>(option: Option.Option<E>) => Effect<never, E, void>
```
