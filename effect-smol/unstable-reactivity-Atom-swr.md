Package: `effect`<br />
Module: `Atom`<br />

## Atom.swr

Adds stale-while-revalidate refresh behavior to an async result atom.

Automatic revalidation during reads is skipped while the current value is
fresh within `staleTime`. Manual `refresh` calls remain forceful and always
forward to the wrapped atom.

Use `revalidateOnMount` to control whether stale data should trigger a
background refresh on first mount. Use `revalidateOnFocus` to control
focus behavior. `true` respects `staleTime` and `"always"` forces refetch.

**Signature**

```ts
declare const swr: { (options: { readonly staleTime: Duration.Input; readonly revalidateOnMount?: boolean | undefined; readonly revalidateOnFocus?: boolean | "always" | undefined; readonly focusSignal?: Atom<any> | undefined; }): <R extends Atom<AsyncResult.AsyncResult<any, any>>>(self: R) => WithoutSerializable<R>; <R extends Atom<AsyncResult.AsyncResult<any, any>>>(self: R, options: { readonly staleTime: Duration.Input; readonly revalidateOnMount?: boolean | undefined; readonly revalidateOnFocus?: boolean | "always" | undefined; readonly focusSignal?: Atom<any> | undefined; }): WithoutSerializable<R>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Atom.ts#L1569)

Since v4.0.0