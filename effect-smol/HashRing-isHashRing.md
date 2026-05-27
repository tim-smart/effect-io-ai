Package: `effect`<br />
Module: `HashRing`<br />

## HashRing.isHashRing

Checks whether a value is a `HashRing`.

**When to use**

Use to narrow an `unknown` value before treating it as a `HashRing`, such as
values crossing an untyped boundary.

**Details**

The guard checks for the module's internal `TypeId` property and narrows to
`HashRing<any>`.

**Gotchas**

This is a structural type-id check; it does not validate the ring's `nodes`,
`ring`, or weight state.

**See**

- `HashRing` for the type narrowed by this guard
- `make` for creating an empty `HashRing`

**Signature**

```ts
declare const isHashRing: (u: unknown) => u is HashRing<any>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HashRing.ts#L121)

Since v3.19.0