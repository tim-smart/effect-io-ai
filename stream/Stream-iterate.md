# iterate

The infinite stream of iterative function application: a, f(a), f(f(a)),
f(f(f(a))), ...

Part of the `Stream` module, imported from `@effect/stream/Stream`.

**Signature**

```ts
export declare const iterate: <A>(value: A, next: (value: A) => A) => Stream<never, never, A>
```
