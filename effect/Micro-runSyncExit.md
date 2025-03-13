Package: `effect`<br />
Module: `Micro`<br />

## Micro.runSyncExit

Attempt to execute the `Micro` effect synchronously and return the `MicroExit`.

If any asynchronous effects are encountered, the function will return a
`CauseDie` containing the `MicroFiber`.

**Signature**

```ts
declare const runSyncExit: <A, E>(effect: Micro<A, E>) => MicroExit<A, E>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Micro.ts#L4289)

Since v3.4.6