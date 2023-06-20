# getOrFailDiscard

Lifts an `Option` into a `IO`, if the option is not defined it fails with
`void`.

To import and use `getOrFailDiscard` from the "Effect" module:

```ts
import * as Effect from '@effect/io/Effect'

// Can be accessed like this
Effect.getOrFailDiscard
```

**Signature**

```ts
export declare const getOrFailDiscard: <A>(option: Option.Option<A>) => Effect<never, void, A>
```
