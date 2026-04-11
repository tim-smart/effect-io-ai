Package: `effect`<br />
Module: `Schema`<br />

## Schema.TreeRecord

A record node in a `Tree`: an object mapping string keys to child
`Tree` nodes.

**Signature**

```ts
export interface TreeRecord<A> {
  readonly [x: string]: Tree<A>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L11550)

Since v4.0.0