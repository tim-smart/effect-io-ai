# iterate

The infinite stream of iterative function application: a, f(a), f(f(a)),
f(f(f(a))), ...

To import and use `iterate` from the "Stream" module:

```ts
import * as Stream from 'effect/Stream'

// Can be accessed like this
Stream.iterate
```

**Signature**

```ts
export declare const iterate: <A>(value: A, next: (value: A) => A) => Stream<never, never, A>
```
