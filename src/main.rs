use num_cpus::{get, get_physical};

fn main() {
    let physical_cores = get_physical();
    let logical_processors = get();

    println!("Physical cores: {}", physical_cores);
    println!("Logical processors: {}", logical_processors);
}
