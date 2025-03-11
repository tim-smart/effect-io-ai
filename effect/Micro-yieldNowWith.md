## yieldNowWith

Pause the execution of the current `Micro` effect, and resume it on the next
scheduler tick.

**Signature**

```ts
declare const yieldNowWith: (priority?: number) => Micro<void>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Micro.ts#L908)

Since v3.4.0