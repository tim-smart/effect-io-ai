## runPromiseExit

Execute the `Micro` effect and return a `Promise` that resolves with the
`MicroExit` of the computation.

**Signature**

```ts
declare const runPromiseExit: <A, E>(effect: Micro<A, E>, options?: { readonly signal?: AbortSignal | undefined; readonly scheduler?: MicroScheduler | undefined; } | undefined) => Promise<MicroExit<A, E>>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Micro.ts#L4245)

Since v3.4.6