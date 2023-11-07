# paginate

Like `Stream.unfold`, but allows the emission of values to end one step further
than the unfolding of the state. This is useful for embedding paginated
APIs, hence the name.

To import and use `paginate` from the "Stream" module:

```ts
import * as Stream from 'effect/Stream'

// Can be accessed like this
Stream.paginate
```

**Signature**

```ts
export declare const paginate: <S, A>(s: S, f: (s: S) => readonly [A, Option.Option<S>]) => Stream<never, never, A>
```
