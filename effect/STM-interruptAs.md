## interruptAs

Interrupts the fiber running the effect with the specified `FiberId`.

**Signature**

```ts
declare const interruptAs: (fiberId: FiberId.FiberId) => STM<never>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/STM.ts#L1147)

Since v2.0.0