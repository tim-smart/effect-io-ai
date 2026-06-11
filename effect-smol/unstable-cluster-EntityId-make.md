Package: `effect`<br />
Module: `EntityId`<br />

## EntityId.make

Brands a string as an `EntityId`.

**When to use**

Use to turn a trusted, stable entity routing key into an `EntityId` before
passing it to cluster APIs.

**Details**

The branded value is the original string at runtime.

**Gotchas**

`make` does not validate, normalize, or make the value unique. Choose
deterministic strings because cluster routing hashes the exact entity id
value.

**See**

- `EntityId` for the schema that validates and encodes branded entity identifiers

**Signature**

```ts
declare const make: (id: string) => EntityId
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/EntityId.ts#L50)

Since v4.0.0