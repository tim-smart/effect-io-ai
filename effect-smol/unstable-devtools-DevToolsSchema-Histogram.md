Package: `effect`<br />
Module: `DevToolsSchema`<br />

## DevToolsSchema.Histogram

Type of a devtools histogram metric snapshot.

**Details**

The state includes bucket counts plus the total count, minimum, maximum, and
sum.

**Signature**

```ts
type Histogram = Schema.Schema.Type<typeof Histogram>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/DevToolsSchema.ts#L409)

Since v4.0.0