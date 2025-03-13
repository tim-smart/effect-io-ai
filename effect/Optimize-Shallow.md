Package: `@effect/printer`<br />
Module: `Optimize`<br />

## Optimize.Shallow

Instructs the document fusion optimizer to avoid diving deeply into nested
documents, fusing mostly concatenations of text nodes together.

**Signature**

```ts
export interface Shallow {
  readonly _tag: "Shallow"
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/printer/src/Optimize.ts#L49)

Since v1.0.0