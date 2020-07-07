load('ext://restart_process', 'docker_build_with_restart')

docker_build_with_restart('test', '.', entrypoint='deno run --unstable --allow-run --allow-env --allow-read --allow-write --allow-net main.ts',
    live_update=[
        sync('.', '/app'),
        run('ls /app'),
    ]
)

k8s_yaml('deployment.yaml')