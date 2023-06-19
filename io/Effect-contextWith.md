# contextWith

Accesses the context of the effect.

Part of the `Effect` module, imported from `@effect/io/Effect`.

**Signature**

```ts
export declare const contextWith: <R, A>(f: (context: Context.Context<R>) => A) => Effect<R, never, A>
```
