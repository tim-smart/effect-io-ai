## dropUntilEffect

Drops incoming elements until the effectful predicate is satisfied.

**Signature**

```ts
declare const dropUntilEffect: <In, E, R>(predicate: (input: In) => Effect.Effect<boolean, E, R>) => Sink<unknown, In, In, E, R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Sink.ts#L466)

Since v2.0.0