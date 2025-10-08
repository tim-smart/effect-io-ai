Package: `@effect/ai`<br />
Module: `Toolkit`<br />

## Toolkit.Any

A utility type which structurally represents any toolkit instance.

**Signature**

```ts
export interface Any {
  readonly [TypeId]: TypeId
  readonly tools: Record<string, Tool.Any>
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/Toolkit.ts#L160)

Since v1.0.0