# isRuntimeFiber

Returns `true` if the specified `Fiber` is a `RuntimeFiber`, `false`
otherwise.

Part of the `Fiber` module, imported from `@effect/io/Fiber`.

**Signature**

```ts
export declare const isRuntimeFiber: <E, A>(self: Fiber<E, A>) => self is RuntimeFiber<E, A>
```
