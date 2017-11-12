package org.pplm.gadgets.coder.repository;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.repository.NoRepositoryBean;

@NoRepositoryBean
public interface BaseRepository<T> extends JpaRepository<T, Long>, JpaSpecificationExecutor<T> {
	
	public Page<T> findAllByDeleteFlag(Integer deleteFlag, Pageable pageable);
	public T findOneByIdAndDeleteFlag(Long id, Integer deleteFlag);
	
}
