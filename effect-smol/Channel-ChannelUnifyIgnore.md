Package: `effect`<br />
Module: `Channel`<br />

## Channel.ChannelUnifyIgnore

Marker used by `Unify` while resolving `Channel` values.

**Details**

It prevents the inherited `Effect` unifier from being selected when the
channel-specific unifier should preserve `Channel` input, output, and
environment type parameters. Users normally do not need to reference this
interface directly.

**Signature**

```ts
export interface ChannelUnifyIgnore {
  Effect?: true
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Channel.ts#L231)

Since v2.0.0