## EntityBehaviourOptions

This are the options for an EntityBehaviour. This controls the entityMaxIdleTime,
check out more on that over the ShardingConfig.
This allows to override the setting for a specific entity.

**Signature**

```ts
type EntityBehaviourOptions = {
  entityMaxIdleTime?: Option.Option<Duration.Duration>
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/cluster/src/RecipientBehaviour.ts#L54)

Since v1.0.0