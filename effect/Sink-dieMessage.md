## dieMessage

Creates a sink halting with the specified message, wrapped in a
`RuntimeException`.

**Signature**

```ts
declare const dieMessage: (message: string) => Sink<never, unknown>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Sink.ts#L346)

Since v2.0.0