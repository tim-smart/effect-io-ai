Package: `@effect/atom-solid`<br />
Module: `Hooks`<br />

## Hooks.useAtomResource

Converts an `AsyncResult` atom into a Solid resource.

**Signature**

```ts
declare const useAtomResource: <A, E>(atom: () => Atom.Atom<AsyncResult.AsyncResult<A, E>>, options?: ResourceOptions<A> & { readonly suspendOnWaiting?: boolean | undefined; }) => ResourceReturn<A, void>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/atom/solid/src/Hooks.ts#L236)

Since v4.0.0