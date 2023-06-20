# reject

Fail with the returned value if the `PartialFunction` matches, otherwise
continue with our held value.

To import and use `reject` from the "Effect" module:

```ts
import * as Effect from '@effect/io/Effect'

// Can be accessed like this
Effect.reject
```

**Signature**

```ts
export declare const reject: {
  <A, E1>(pf: (a: A) => Option.Option<E1>): <R, E>(self: Effect<R, E, A>) => Effect<R, E1 | E, A>
  <R, E, A, E1>(self: Effect<R, E, A>, pf: (a: A) => Option.Option<E1>): Effect<R, E | E1, A>
}
```
