## runPromise

Execute the `Micro` effect and return a `Promise` that resolves with the
successful value of the computation.

**Signature**

```ts
declare const runPromise: <A, E>(effect: Micro<A, E>, options?: { readonly signal?: AbortSignal | undefined; readonly scheduler?: MicroScheduler | undefined; } | undefined) => Promise<A>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Micro.ts#L4265)

Since v3.4.0