Package: `@effect/ai`<br />
Module: `Tool`<br />

## Tool.HandlersFor

A utility type to create a union of `Handler` types for all tools in a
record.

**Signature**

```ts
type HandlersFor<Tools> = {
  [K in keyof Tools]: Handler<Tools[K]["name"]>
}[keyof Tools]
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/Tool.ts#L689)

Since v1.0.0