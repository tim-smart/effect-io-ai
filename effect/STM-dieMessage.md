## dieMessage

Kills the fiber running the effect with a `Cause.RuntimeException` that
contains the specified message.

**Signature**

```ts
declare const dieMessage: (message: string) => STM<never>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/STM.ts#L497)

Since v2.0.0