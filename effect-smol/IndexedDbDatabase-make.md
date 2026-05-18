Package: `@effect/platform-browser`<br />
Module: `IndexedDbDatabase`<br />

## IndexedDbDatabase.make

Creates the initial `IndexedDbSchema` from a version and an initialization migration run during database upgrade.

**Signature**

```ts
declare const make: <InitialVersion extends IndexedDbVersion.AnyWithProps, Error>(initialVersion: InitialVersion, init: (toQuery: Transaction<InitialVersion>) => Effect.Effect<void, Error>) => IndexedDbSchema<never, InitialVersion, Error>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform-browser/src/IndexedDbDatabase.ts#L290)

Since v4.0.0